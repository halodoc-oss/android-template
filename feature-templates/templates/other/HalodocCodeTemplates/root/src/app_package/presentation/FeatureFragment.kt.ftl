package ${escapeKotlinIdentifiers(packageName)}.presentation.ui

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.lifecycle.Observer
import androidx.lifecycle.ViewModelProviders
import ${escapeKotlinIdentifiers(packageName)}.presentation.viewmodel.${featureName}ViewModel
import ${escapeKotlinIdentifiers(packageName)}.presentation.viewmodel.${featureName}ViewModelFactory

class ${featureName}Fragment : Fragment() {

	private lateinit var viewModel: ${featureName}ViewModel


	override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                                  savedInstanceState: Bundle?): View? {

        return LayoutInflater.from(context)
                .inflate(R.layout.layout_name, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        initView()
        setUpViewModel()
        observeViewModel()
    }

    private fun initView() {

    }

    private fun setUpViewModel() {
        viewModel = ViewModelProviders.of(this, ${featureName}ViewModelFactory(
                Injection.provide${featureName}Repository()))[${featureName}ViewModel::class.java]
    }

    private fun observeViewModel() {

    }

}
